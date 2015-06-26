.class public final Lkp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lrx;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lkp;->a:Ljava/util/Set;

    .line 22
    iput-object p1, p0, Lkp;->b:Lrx;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lkp;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrz;

    .line 32
    iget-object v2, p0, Lkp;->b:Lrx;

    invoke-interface {v2, v0}, Lrx;->a(Lrz;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lkp;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/Class;Lrz;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lkp;->b:Lrx;

    invoke-interface {v0, p1, p2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 27
    iget-object v0, p0, Lkp;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
