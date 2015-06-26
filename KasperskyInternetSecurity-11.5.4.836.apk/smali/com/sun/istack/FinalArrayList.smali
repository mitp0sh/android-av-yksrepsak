.class public final Lcom/sun/istack/FinalArrayList;
.super Ljava/util/ArrayList;
.source "FinalArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/sun/istack/FinalArrayList;, "Lcom/sun/istack/FinalArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 16
    .local p0, "this":Lcom/sun/istack/FinalArrayList;, "Lcom/sun/istack/FinalArrayList<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/sun/istack/FinalArrayList;, "Lcom/sun/istack/FinalArrayList<TT;>;"
    .local p1, "ts":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    return-void
.end method
