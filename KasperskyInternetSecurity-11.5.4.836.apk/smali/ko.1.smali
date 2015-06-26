.class final Lko;
.super LjP;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, LjP;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lko;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Los;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenPrivacyProtectionDialog:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 467
    :cond_0
    return-void
.end method
