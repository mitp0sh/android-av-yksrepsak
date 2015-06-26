.class final LeW;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:LeX;


# direct methods
.method public constructor <init>(LeX;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 133
    iput-object p1, p0, LeW;->a:LeX;

    .line 134
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, LeW;->a:LeX;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, LeX;->c(I)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, LeW;->a:LeX;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v2, v0}, LeX;->a(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
