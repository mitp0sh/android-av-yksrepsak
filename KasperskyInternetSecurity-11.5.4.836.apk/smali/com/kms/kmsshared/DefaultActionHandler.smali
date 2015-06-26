.class public final Lcom/kms/kmsshared/DefaultActionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    .line 64
    return-void
.end method

.method private a(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 69
    :cond_0
    if-eqz v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LnB;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 72
    :cond_1
    return v1
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    check-cast v0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;

    invoke-virtual {v0, p1}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private static b(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lsr;->e()Lse;

    .line 92
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    .line 94
    sget-object v0, Lqx;->b:[I

    invoke-virtual {p0}, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ordinal()I

    .line 115
    return-void
.end method

.method private c(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V
    .locals 4

    .prologue
    const/16 v2, 0xbb9

    const/4 v3, 0x1

    .line 132
    sget-object v0, Lqx;->b:[I

    invoke-virtual {p1}, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/kmsshared/DefaultActionHandler;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    const/4 v1, 0x0

    sget-object v2, Lcom/kms/antivirus/AntivirusUpdateReason;->OnDemand:Lcom/kms/antivirus/AntivirusUpdateReason;

    invoke-virtual {v0, v3, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;)I

    move-result v0

    .line 139
    if-eq v0, v3, :cond_1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_2

    .line 142
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    const-class v2, Lcom/kms/updater/gui/UpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    iget-object v1, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 146
    const/16 v0, 0xbbd

    invoke-direct {p0, v0}, Lcom/kms/kmsshared/DefaultActionHandler;->b(I)V

    goto :goto_0

    .line 154
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/DefaultActionHandler;->a:Landroid/app/Activity;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    invoke-direct {p0, v2}, Lcom/kms/kmsshared/DefaultActionHandler;->b(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lqx;->a:[I

    invoke-virtual {p1}, Lcom/kms/kmsshared/DefaultActionHandler$Action;->getType()Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/kms/kmsshared/DefaultActionHandler;->c(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-static {p1}, Lcom/kms/kmsshared/DefaultActionHandler;->b(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
