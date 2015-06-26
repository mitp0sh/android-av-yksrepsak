.class public Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;
.super Ljava/lang/Object;
.source "IllegalAnnotationsException.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final list:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 106
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method public error(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V
    .locals 1
    .param p1, "e"    # Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    .prologue
    .line 97
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
