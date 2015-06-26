.class public Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
.super Lae/javax/xml/bind/JAXBException;
.source "IllegalAnnotationsException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " counts of IllegalAnnotationExceptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    .line 69
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "there must be at least one error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;->errors:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;->errors:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lae/javax/xml/bind/JAXBException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    .line 78
    .local v0, "error":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    .end local v0    # "error":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
