.class public final LqC;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, LqC;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 186
    invoke-static {p0}, Lri;->a(Landroid/content/BroadcastReceiver;)Z

    move-result v0

    .line 193
    :goto_0
    if-eqz v0, :cond_0

    .line 195
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 196
    array-length v3, v2

    move v0, v1

    .line 197
    :goto_1
    if-ge v0, v3, :cond_0

    .line 199
    aget-object v4, v2, v0

    iget-object v5, p0, LqC;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v5}, Lcom/kms/kmsshared/KMSApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-virtual {p0, v1}, LqC;->setResultCode(I)V

    .line 202
    invoke-virtual {p0}, LqC;->abortBroadcast()V

    .line 207
    :cond_0
    return-void

    .line 190
    :cond_1
    invoke-static {p0}, Lrj;->a(Landroid/content/BroadcastReceiver;)Z

    move-result v0

    goto :goto_0

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
