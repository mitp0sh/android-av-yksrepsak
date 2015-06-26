.class final LpJ;
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
    .line 393
    iput-object p1, p0, LpJ;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpB;B)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1}, LpJ;-><init>(LpB;)V

    return-void
.end method

.method private a(Lwn;)V
    .locals 3

    .prologue
    .line 396
    sget-object v1, LpC;->h:[I

    invoke-virtual {p1}, Lwn;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/ucp/UcpEventType;

    invoke-virtual {v0}, Lcom/kms/ucp/UcpEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v0, p0, LpJ;->a:LpB;

    sget-object v1, Lqa;->a:Ljava/lang/String;

    invoke-static {}, Lqa;->a()Lqa;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v0, p0, LpJ;->a:LpB;

    sget-object v1, Lqa;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 396
    nop

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
    .line 393
    check-cast p1, Lwn;

    invoke-direct {p0, p1}, LpJ;->a(Lwn;)V

    return-void
.end method
