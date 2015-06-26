.class final Lmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lmv;


# direct methods
.method constructor <init>(Lmv;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lmw;->a:Lmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 278
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 279
    iget-object v1, p0, Lmw;->a:Lmv;

    iget-object v1, v1, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->a(Lmu;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 280
    iget-object v1, p0, Lmw;->a:Lmv;

    iget-object v1, v1, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->b(Lmu;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 281
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmu;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_0
    :goto_0
    iget-object v1, p0, Lmw;->a:Lmv;

    iget-object v1, v1, Lmv;->a:Lmu;

    iget-object v2, p0, Lmw;->a:Lmv;

    iget-object v2, v2, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->e(Lmu;)LgE;

    move-result-object v2

    iget-object v3, p0, Lmw;->a:Lmv;

    iget-object v3, v3, Lmv;->a:Lmu;

    invoke-static {v3}, Lmu;->d(Lmu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v2, v3, v0}, LgE;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lmu;->a(Lmu;I)I

    .line 287
    iget-object v0, p0, Lmw;->a:Lmv;

    iget-object v0, v0, Lmv;->a:Lmu;

    iget-object v1, p0, Lmw;->a:Lmv;

    iget-object v1, v1, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->f(Lmu;)I

    move-result v1

    invoke-static {v0, v1}, Lmu;->b(Lmu;I)V

    .line 288
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lmw;->a:Lmv;

    iget-object v1, v1, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->c(Lmu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
