# 🛒 Walmart Customer Segmentation with K-Means Clustering

This project applies unsupervised machine learning to segment Walmart customers based on their lifestyle and shopping behavior. The goal is to identify distinct customer groups to support personalized marketing strategies.

---

## 📌 Objective

To group Walmart customers into behavioral segments using **K-Means clustering**, and determine the optimal number of clusters using internal validation techniques.

---

## 🧰 Tools & Technologies
- **R Programming**
- `amap`, `factoextra`, `cluster`, `gridExtra`
- K-Means Clustering
- Elbow Method, Silhouette Score, Gap Statistic
- Data Visualization (`fviz_cluster`, `fviz_nbclust`, `fviz_gap_stat`)

---

## 🔍 Steps Performed
1. Loaded and explored behavioral survey data (`K_Means_Study.csv`)
2. Applied K-Means clustering for `k = 2` to `k = 8`
3. Visualized cluster formations using `fviz_cluster()`
4. Evaluated cluster performance with:
   - **Elbow Method**
   - **Silhouette Score**
   - **Gap Statistic**
5. Identified `k = 4` as the optimal number of clusters
6. Interpreted segment patterns to suggest tailored marketing actions

---

## 📊 Key Insights
- **Four clusters** showed distinct differences in interests (e.g., theater, travel, family time)
- Some segments favored social functions and live shows, while others preferred at-home activities
- These segments can guide product promotion and communication targeting

---

## 📁 File Structure
- `walmart_segmentation.R` – Full R script for clustering and visualizations
- `README.md` – This documentation
- `cluster_plots/` – Visualizations comparing k-values

---

## ✅ Author  
**Murtaza Gohari**  
Business Analytics | R | Machine Learning Enthusiast  
[LinkedIn](https://www.linkedin.com/in/murtaza-gohari4747)
