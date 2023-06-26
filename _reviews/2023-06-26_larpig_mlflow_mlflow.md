---
layout: review
repository_owner: mlflow
repository_name: mlflow
review_title: MLflow - Empowering Teams for Effective Model Development and Deployment
author_github_id: larpig
date: 2023-06-26
---
MLflow is an open-source framework to streamline machine learning development, 
including tracking experiments, packaging code into reproducible runs, 
packaging model for deployment and managing models in a central repository. 
Specifically, MLflow’s empowers Data Scientists and Machine Learning Engineers 
to effectively develop machine learning models through four components are:
- [MLflow Tracking](https://mlflow.org/docs/latest/tracking.html): An API to log
  parameters, code, and results in machine learning
  experiments and compare them using an interactive UI.
- [MLflow Projects](https://mlflow.org/docs/latest/projects.html): A code packaging
  format for reproducible runs using Conda and Docker, so you can share your ML code with others.
- [MLflow Models](https://mlflow.org/docs/latest/models.html): A model packaging format
  and tools that let you easily deploy the same model (from any ML library) to batch and
  real-time scoring on platforms such as Docker, Apache Spark, Azure ML and AWS SageMaker.
- [MLflow Model Registry](https://mlflow.org/docs/latest/model-registry.html): A centralized
  model store, set of APIs, and UI, to collaboratively manage the full lifecycle of MLflow Models.

I have been using MLflow successfully for the last 2 years through two different projects, from where I can share that:
- MLflow Tracking is really helpful to standardize and document the ML experimentation step and also in production to
  track hyperparameter tuning. Furthermore, specially in the experimentation step, it’s worth mentioning that you can
  easily integrate MLflow with [Kedro](https://kedro.org/), a toolbox for production-ready code, to speed up (or even automate) the production
  of experiments;
- When implementing a [MLOps strategy](https://cloud.google.com/architecture/mlops-continuous-delivery-and-automation-pipelines-in-machine-learning),
  MLflow Models and MLflow Model Registry components are of great help to implement and automate Continuous Training,
  which is concerned with automatically retraining and serving the models.
  Specifically, MLflow provides a centralized model store that facilitates model version control, stage transitions, and model lineage.

**Note**: MLflow Models is a very helpful component, however I must share that I have faced some issues to serialize models
from MLlib (Apache Spark's scalable machine learning library) when using the MLflow versions previous than 2.0.

Finally, to illustrate how easy it is to use, below I share a code snippet using MLflow Tracking and MLflow Models components:

```
import mlflow

# Start an MLflow run to track the experiment
with mlflow.start_run():
    # Log parameters
    mlflow.log_param("learning_rate", 0.001)
    mlflow.log_param("batch_size", 32)
    
    # Log metrics
    mlflow.log_metric("accuracy", 0.85)
    mlflow.log_metric("loss", 0.42)
    
    # Log artifacts (e.g., model weights, visualizations)
    mlflow.log_artifact("model_weights.h5")
    mlflow.log_artifact("visualization.png")
        
    # Save the trained model in a specific Keras “flavor”
    mlflow.keras.log_model(model, "model")
```


