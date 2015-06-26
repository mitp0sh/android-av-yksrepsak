.class final Lkn;
.super LjP;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, LjP;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lkn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 351
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Lde;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenAntiTheftPortal:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 355
    :cond_0
    return-void
.end method
