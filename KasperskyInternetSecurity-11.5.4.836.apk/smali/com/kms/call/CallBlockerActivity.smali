.class public Lcom/kms/call/CallBlockerActivity;
.super Lcom/kms/gui/KMSCommonUserActionActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:LrW;

.field private final c:Landroid/os/Handler;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/kms/call/CallBlockerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/call/CallBlockerActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;-><init>()V

    .line 32
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->x()LrW;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/call/CallBlockerActivity;->b:LrW;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kms/call/CallBlockerActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method public static synthetic a(Lcom/kms/call/CallBlockerActivity;)LrW;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kms/call/CallBlockerActivity;->b:LrW;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 105
    sget-object v0, Lcom/kms/call/CallBlockerActivity;->a:Ljava/lang/String;

    const-string v1, "Calling with default dialer!"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/kms/call/CallBlockerActivity;->b:LrW;

    const-string v1, "CallBlocker"

    invoke-interface {v0, v1}, LrW;->c(Ljava/lang/String;)Z

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/call/CallBlockerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/call/CallBlockerActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kms/call/CallBlockerActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/kms/call/CallBlockerActivity;->c:Landroid/os/Handler;

    new-instance v1, LmW;

    invoke-direct {v1, p0}, LmW;-><init>(Lcom/kms/call/CallBlockerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    invoke-virtual {p0}, Lcom/kms/call/CallBlockerActivity;->finish()V

    .line 125
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/kms/call/CallBlockerActivity;->b:LrW;

    const-string v2, "CallBlocker"

    invoke-interface {v1, v2}, LrW;->b(Ljava/lang/String;)Z

    .line 121
    throw v0
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6

    .prologue
    .line 88
    const v0, 0x7f030013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    const v0, 0x7f0b0062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0703b3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kms/call/CallBlockerActivity;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/kms/call/CallBlockerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object v1
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/kms/call/CallBlockerActivity$Action;->values()[Lcom/kms/call/CallBlockerActivity$Action;

    move-result-object v0

    aget-object v0, v0, p1

    .line 76
    sget-object v1, LmX;->a:[I

    invoke-virtual {v0}, Lcom/kms/call/CallBlockerActivity$Action;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/kms/call/CallBlockerActivity;->finish()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/kms/call/CallBlockerActivity;->c()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/kms/call/CallBlockerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/call/CallBlockerActivity;->d:Ljava/lang/String;

    .line 45
    :cond_0
    const v0, 0x7f0703b1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0703b2

    invoke-virtual {p0, v3}, Lcom/kms/call/CallBlockerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f07026e

    invoke-virtual {p0, v2}, Lcom/kms/call/CallBlockerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/kms/call/CallBlockerActivity;->a(I[Ljava/lang/String;Z)V

    .line 49
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Error:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    invoke-virtual {p0, v0}, Lcom/kms/call/CallBlockerActivity;->a(Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;)V

    .line 52
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 53
    const/16 v1, 0x2f

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/kms/call/CallBlockerActivity;->c()V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/kms/call/CallBlockerActivity;->b:LrW;

    const-string v1, "CallBlocker"

    invoke-interface {v0, v1}, LrW;->a(Ljava/lang/String;)LrS;

    move-result-object v0

    check-cast v0, LmY;

    .line 59
    if-nez v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/kms/call/CallBlockerActivity;->finish()V

    goto :goto_0

    .line 64
    :cond_3
    invoke-interface {v0}, LmY;->a()LmV;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/kms/call/CallBlockerActivity;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, LmV;->a(Ljava/lang/String;)Z

    move-result v0

    .line 66
    sget-object v1, Lcom/kms/call/CallBlockerActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Phone number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kms/call/CallBlockerActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is blocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-nez v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/kms/call/CallBlockerActivity;->c()V

    goto :goto_0
.end method
