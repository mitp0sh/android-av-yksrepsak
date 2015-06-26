.class public Lcom/kms/activation/gui/LicenseBlockedActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/activation/gui/LicenseInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "LicenseInfoActivity.license_blocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseBlockedActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 37
    :pswitch_0
    invoke-static {}, Lkr;->g()V

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-static {}, Lcom/kms/kmsshared/Utils;->g()V

    .line 41
    invoke-static {}, Lkr;->h()V

    .line 42
    invoke-virtual {p0}, Lcom/kms/activation/gui/LicenseBlockedActivity;->finish()V

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-direct {p0}, Lcom/kms/activation/gui/LicenseBlockedActivity;->c()V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x7f0b0189
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseBlockedActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseBlockedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v1, 0x7f0b018b

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseBlockedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v1, 0x7f0b0189

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseBlockedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-static {}, Lkr;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lfb;->a([Landroid/view/View;)V

    .line 30
    :cond_0
    return-void
.end method
