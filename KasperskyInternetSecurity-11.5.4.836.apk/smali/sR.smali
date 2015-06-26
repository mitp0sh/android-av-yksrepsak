.class final LsR;
.super Lte;
.source "SourceFile"


# instance fields
.field private synthetic d:Landroid/os/Handler;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:LsQ;


# direct methods
.method constructor <init>(LsQ;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, LsR;->f:LsQ;

    iput-object p2, p0, LsR;->d:Landroid/os/Handler;

    iput-object p3, p0, LsR;->e:Ljava/lang/String;

    invoke-direct {p0}, Lte;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, LsR;->f:LsQ;

    iget-object v1, p0, LsR;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, LsQ;->a(LsQ;Landroid/os/Handler;)Landroid/os/Handler;

    .line 148
    iget-object v0, p0, LsR;->f:LsQ;

    iget-object v1, p0, LsR;->e:Ljava/lang/String;

    invoke-static {v0, v1}, LsQ;->a(LsQ;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, LsR;->f:LsQ;

    invoke-static {v0}, LsQ;->a(LsQ;)Ltc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LsR;->f:LsQ;

    invoke-static {v0}, LsQ;->a(LsQ;)Ltc;

    move-result-object v0

    invoke-virtual {v0}, Ltc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, LsR;->f:LsQ;

    invoke-static {v0}, LsQ;->a(LsQ;)Ltc;

    move-result-object v0

    invoke-virtual {v0}, Ltc;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, LsR;->f:LsQ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LsQ;->a(LsQ;Ltc;)Ltc;

    .line 158
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, LsR;->f:LsQ;

    invoke-static {v0}, LsQ;->b(LsQ;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
