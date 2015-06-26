.class public interface abstract Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;
.super Ljava/lang/Object;
.source "AnnotationReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAllFieldAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation
.end method

.method public abstract getAllMethodAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation
.end method

.method public abstract getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TC;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract getClassArrayValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation
.end method

.method public abstract getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TF;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TM;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TM;TM;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract getMethodParameterAnnotation(Ljava/lang/Class;Ljava/lang/Object;ILae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TM;I",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TC;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract hasClassAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hasFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;TF;)Z"
        }
    .end annotation
.end method

.method public abstract hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;TM;)Z"
        }
    .end annotation
.end method

.method public abstract hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            "TM;TM;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract setErrorHandler(Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;)V
.end method
