.class public final Lvg;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kms/privacyprotection/PrivacyProtectionEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ContactsChanged:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {p0, v0}, Lvg;->a(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lvg;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
