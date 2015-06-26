.class final LnG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:LnE;


# direct methods
.method private constructor <init>(LnE;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, LnG;->a:LnE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LnE;B)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, LnG;-><init>(LnE;)V

    return-void
.end method

.method private a(Lme;)V
    .locals 2

    .prologue
    .line 329
    sget-object v1, LnF;->b:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, LnG;->a:LnE;

    invoke-virtual {p1}, Lme;->e()Lmn;

    move-result-object v1

    invoke-static {v0, v1}, LnE;->a(LnE;Lmn;)V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 326
    check-cast p1, Lme;

    invoke-direct {p0, p1}, LnG;->a(Lme;)V

    return-void
.end method
