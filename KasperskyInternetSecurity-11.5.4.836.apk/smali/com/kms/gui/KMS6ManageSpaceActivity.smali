.class public Lcom/kms/gui/KMS6ManageSpaceActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-static {}, Lqq;->a()Z

    .line 19
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMS6ManageSpaceActivity;->setTheme(I)V

    .line 25
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030097

    invoke-virtual {p0, v0, v4}, Lcom/kms/gui/KMS6ManageSpaceActivity;->a(II)V

    .line 29
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMS6ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMS6ManageSpaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    const v2, 0x7f070254

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMS6ManageSpaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMS6ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    new-instance v1, Lnl;

    invoke-direct {v1, p0}, Lnl;-><init>(Lcom/kms/gui/KMS6ManageSpaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
