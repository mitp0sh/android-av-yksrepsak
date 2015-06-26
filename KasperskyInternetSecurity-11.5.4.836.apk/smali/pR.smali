.class final LpR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:LpP;


# direct methods
.method private constructor <init>(LpP;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, LpR;->a:LpP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpP;B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, LpR;-><init>(LpP;)V

    return-void
.end method

.method private a(Lkk;)V
    .locals 2

    .prologue
    .line 43
    sget-object v1, LpQ;->a:[I

    invoke-virtual {p1}, Lkk;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/UiEventType;

    invoke-virtual {v0}, Lcom/kms/UiEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, LpR;->a:LpP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LpP;->a(Z)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, LpR;->a:LpP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LpP;->a(Z)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lkk;

    invoke-direct {p0, p1}, LpR;->a(Lkk;)V

    return-void
.end method
