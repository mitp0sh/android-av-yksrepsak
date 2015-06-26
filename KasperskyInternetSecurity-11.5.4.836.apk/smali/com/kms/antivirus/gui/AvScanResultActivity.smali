.class public Lcom/kms/antivirus/gui/AvScanResultActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030023

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvScanResultActivity;->a(II)V

    .line 30
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 31
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 36
    const v2, 0x7f0700d1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 37
    new-instance v2, LmJ;

    invoke-direct {v2, p0}, LmJ;-><init>(Lcom/kms/antivirus/gui/AvScanResultActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 53
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 55
    if-eqz v3, :cond_3

    .line 56
    const-string v0, "SCAN_MODE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com_kms_scan_result_cancelled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move-object v2, v1

    move v1, v0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 61
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 66
    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->FolderScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    .line 67
    const v3, 0x7f0700c7

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    :goto_1
    if-eqz v1, :cond_2

    .line 78
    const v1, 0x7f0700ca

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-static {}, Lmx;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-static {}, Lmx;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    invoke-static {}, Lmx;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    invoke-static {}, Lmx;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-static {}, Lmx;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    invoke-static {}, Lmx;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 68
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 69
    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->QuickScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    .line 70
    const v3, 0x7f07022a

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 72
    :cond_1
    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->FullScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    .line 73
    const v3, 0x7f0700c8

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 80
    :cond_2
    const v1, 0x7f0700c9

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {}, Lmx;->j()J

    move-result-wide v4

    invoke-static {}, Lmx;->i()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;JI)V

    goto/16 :goto_2

    :cond_3
    move-object v2, v0

    goto/16 :goto_0
.end method
