.class public final Lon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;


# direct methods
.method private constructor <init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lon;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;B)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lon;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 335
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 336
    iget-object v0, p0, Lon;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-static {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    move-result-object v0

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-ne v0, v1, :cond_2

    .line 337
    iget-object v0, p0, Lon;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-static {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 340
    :cond_0
    :goto_0
    iget-object v0, p0, Lon;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-virtual {v0, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Z)V

    .line 344
    :cond_1
    :goto_1
    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Lon;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-static {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    move-result-object v0

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lon;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-static {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    goto :goto_0

    .line 341
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 342
    iget-object v0, p0, Lon;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-virtual {v0, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Z)V

    goto :goto_1
.end method
