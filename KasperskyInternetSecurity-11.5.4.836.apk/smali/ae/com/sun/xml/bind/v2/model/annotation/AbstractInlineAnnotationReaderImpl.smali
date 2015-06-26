.class public abstract Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;
.super Ljava/lang/Object;
.source "AbstractInlineAnnotationReaderImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;


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
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
        "<TT;TC;TF;TM;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;, "Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl<TT;TC;TF;TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fullName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final getErrorHandler()Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;, "Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl<TT;TC;TF;TM;>;"
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "error handler must be set before use"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    return-object v0
.end method

.method public final getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 8
    .param p4, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
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

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;, "Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl<TT;TC;TF;TM;>;"
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "getter":Ljava/lang/Object;, "TM;"
    .local p3, "setter":Ljava/lang/Object;, "TM;"
    const/4 v2, 0x0

    .line 76
    if-nez p2, :cond_1

    move-object v0, v2

    .line 77
    .local v0, "a1":Ljava/lang/annotation/Annotation;, "TA;"
    :goto_0
    if-nez p3, :cond_2

    move-object v1, v2

    .line 79
    .local v1, "a2":Ljava/lang/annotation/Annotation;, "TA;"
    :goto_1
    if-nez v0, :cond_4

    .line 80
    if-nez v1, :cond_3

    move-object v0, v2

    .line 94
    .end local v0    # "a1":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_0
    :goto_2
    return-object v0

    .line 76
    .end local v1    # "a2":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .line 77
    .restart local v0    # "a1":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_1

    .restart local v1    # "a2":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_3
    move-object v0, v1

    .line 83
    goto :goto_2

    .line 85
    :cond_4
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->getErrorHandler()Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    move-result-object v2

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->DUPLICATE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->fullName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->fullName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;->error(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_2
.end method

.method public hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Z
    .locals 5
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p5, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
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

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;, "Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl<TT;TC;TF;TM;>;"
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "getter":Ljava/lang/Object;, "TM;"
    .local p4, "setter":Ljava/lang/Object;, "TM;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p3}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 101
    .local v0, "x":Z
    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p0, p1, p4}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    .line 103
    .local v1, "y":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, p1, p3, p4, p5}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    .line 108
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "x":Z
    .end local v1    # "y":Z
    :cond_3
    move v0, v2

    .line 100
    goto :goto_0

    .restart local v0    # "x":Z
    :cond_4
    move v1, v2

    .line 101
    goto :goto_1
.end method

.method public setErrorHandler(Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    .prologue
    .line 62
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;, "Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl<TT;TC;TF;TM;>;"
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;->errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    .line 65
    return-void
.end method
