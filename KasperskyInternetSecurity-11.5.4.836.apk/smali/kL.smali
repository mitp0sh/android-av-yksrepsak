.class final LkL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LoO;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, LkL;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    .line 47
    invoke-static {p2}, Lcom/kms/antiphishing/AntiPhishingMode;->getById(I)Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v1

    .line 48
    invoke-interface {v0}, LkM;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {v0, v1}, LkM;->a(Lcom/kms/antiphishing/AntiPhishingMode;)V

    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
