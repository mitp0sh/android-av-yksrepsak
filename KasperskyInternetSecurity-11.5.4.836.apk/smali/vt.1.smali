.class public final Lvt;
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
    .line 106
    iput-object p1, p0, Lvt;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;B)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lvt;-><init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lvt;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->setResult(I)V

    .line 110
    iget-object v0, p0, Lvt;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->finish()V

    .line 111
    return-void
.end method
