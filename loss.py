import torch
import torch.nn as nn
import torch.nn.functional as F
import math
import numpy as np

# if args.loss == 'SCE':
#     criterion = SCELoss(alpha=args.alpha, beta=args.beta, num_classes=num_classes)
# elif args.loss == 'CE':
#     criterion = torch.nn.CrossEntropyLoss()

class SCELoss(nn.Module):
    def __init__(self, alpha=1.0, beta=1.0, num_classes=2):
        super(SCELoss, self).__init__()
        self.device = 'cuda' if torch.cuda.is_available() else 'cpu'
        self.alpha = alpha
        self.beta = beta
        self.num_classes = num_classes
        self.cross_entropy = torch.nn.CrossEntropyLoss()

    def forward(self, pred, labels):
        # CCE
        ce = self.cross_entropy(pred, labels)

        # RCE
        pred = F.softmax(pred, dim=1)
        pred = torch.clamp(pred, min=1e-7, max=1.0)
        label_one_hot = torch.nn.functional.one_hot(labels, self.num_classes).float().to(self.device)
        label_one_hot = torch.clamp(label_one_hot, min=1e-4, max=1.0)
        rce = (-1*torch.sum(pred * torch.log(label_one_hot), dim=1))

        # Loss
        loss = self.alpha * ce + self.beta * rce.mean()
        return loss
