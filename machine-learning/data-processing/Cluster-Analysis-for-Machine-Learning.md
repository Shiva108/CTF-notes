---
title: Cluster Analysis for Machine Learning
description: We can find the number of clusters using methods such as K-means.
tags: 
    - Clustering
    - Machine Learning
refs:
    - https://www.kaggle.com/competitions/ai-village-ctf
    - https://www.geeksforgeeks.org/elbow-method-for-optimal-value-of-k-in-kmeans/
date: 2023-08-20
draft: false
---

## Find Optimal Number of Clusters

### K-means & Elbow Curve

Reference: [https://www.kaggle.com/code/jonbown/ai-ctf-submissions?scriptVersionId=105606691&cellId=39](https://www.kaggle.com/code/jonbown/ai-ctf-submissions?scriptVersionId=105606691&cellId=39)


We may find the optimal number of clusters by using **K-means** algorithm and observing the **Elbow** graph.

```python
import numpy as np
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt

clusters = np.load("example.npy")

# specify the range of the number of clusters
K = range(1, 10)

distortions = []
for i in K:
	kmeans = KMeans(n_clusters=i)
	kmeans.fit(clusters)
	distortions.append(kmeans.inertia_)

plt.plot(K, distortions)
plt.xlabel("Number of clusters")
plt.ylabel("Distortion")
```

Seeing the output graph, the last point where the distortion (or inertia) drops sharply may be the optimal number of clusters.