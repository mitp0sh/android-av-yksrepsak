.class final LpE;
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
    .line 374
    iput-object p1, p0, LpE;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpB;B)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p1}, LpE;-><init>(LpB;)V

    return-void
.end method

.method private a(LkJ;)V
    .locals 3

    .prologue
    .line 377
    sget-object v1, LpC;->g:[I

    invoke-virtual {p1}, LkJ;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-virtual {v0}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    return-void

    .line 379
    :pswitch_0
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    invoke-interface {v0}, LkM;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    if-eq v0, v1, :cond_0

    .line 380
    iget-object v0, p0, LpE;->a:LpB;

    sget-object v1, LoZ;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, LpE;->a:LpB;

    sget-object v1, LoZ;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, LoZ;->a(Z)LoZ;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 374
    check-cast p1, LkJ;

    invoke-direct {p0, p1}, LpE;->a(LkJ;)V

    return-void
.end method
