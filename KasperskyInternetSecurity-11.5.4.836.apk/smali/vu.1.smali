.class public final Lvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;


# direct methods
.method private constructor <init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lvu;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;B)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lvu;-><init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v0, v0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    iget-object v1, p0, Lvu;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)Z

    move-result v1

    iget-object v2, p0, Lvu;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LuV;->a(ZLuU;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lvu;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    const-wide/16 v1, 0xc8

    invoke-static {v0, p0, v1, v2}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
