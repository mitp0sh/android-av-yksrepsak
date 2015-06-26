.class final LpH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:LpB;


# direct methods
.method private constructor <init>(LpB;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, LpH;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpB;B)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, LpH;-><init>(LpB;)V

    return-void
.end method

.method private a(LwC;)V
    .locals 3

    .prologue
    .line 195
    sget-object v1, LpC;->a:[I

    invoke-virtual {p1}, LwC;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/updater/gui/AppUpdaterEventType;

    invoke-virtual {v0}, Lcom/kms/updater/gui/AppUpdaterEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, LpH;->a:LpB;

    sget-object v1, Lpd;->a:Ljava/lang/String;

    invoke-virtual {p1}, LwC;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpd;->a(Ljava/lang/String;)Lpd;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 192
    check-cast p1, LwC;

    invoke-direct {p0, p1}, LpH;->a(LwC;)V

    return-void
.end method
