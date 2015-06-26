.class public final Liv;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kavsdk/secureinput/widget/KeyboardView;


# direct methods
.method public constructor <init>(Lcom/kavsdk/secureinput/widget/KeyboardView;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Liv;->a:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Liv;->a:Lcom/kavsdk/secureinput/widget/KeyboardView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Lcom/kavsdk/secureinput/widget/KeyboardView;I)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Liv;->a:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Lcom/kavsdk/secureinput/widget/KeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Liv;->a:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->b(Lcom/kavsdk/secureinput/widget/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 260
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Liv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object v1, p0, Liv;->a:Lcom/kavsdk/secureinput/widget/KeyboardView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v1, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Lcom/kavsdk/secureinput/widget/KeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
