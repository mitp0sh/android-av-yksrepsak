.class public final Lhv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:LiH;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhv;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public final a(LiH;)V
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lhv;->b:Z

    if-nez v0, :cond_0

    .line 32
    iput-object p1, p0, Lhv;->c:LiH;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhv;->b:Z

    .line 35
    :cond_0
    return-void
.end method
