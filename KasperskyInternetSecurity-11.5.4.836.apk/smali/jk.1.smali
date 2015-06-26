.class public final Ljk;
.super Ljd;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:Z

.field public e:I

.field public f:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljd;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Ljk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-boolean v0, p0, Ljk;->d:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Ljk;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 134
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 136
    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 145
    :cond_0
    return-void
.end method
