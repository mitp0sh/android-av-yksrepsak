.class public enum Lcom/kms/privacyprotection/PrivacyProtectionEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ContactsChanged:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

.field public static final enum Disabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

.field public static final enum Enabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

.field private static final synthetic a:[Lcom/kms/privacyprotection/PrivacyProtectionEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    const-string v1, "Enabled"

    invoke-direct {v0, v1, v2}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Enabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    .line 13
    new-instance v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v3}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Disabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    .line 18
    new-instance v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType$1;

    const-string v1, "ContactsChanged"

    invoke-direct {v0, v1, v4}, Lcom/kms/privacyprotection/PrivacyProtectionEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ContactsChanged:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    sget-object v1, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Enabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Disabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ContactsChanged:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->a:[Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/privacyprotection/PrivacyProtectionEventType$1;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/privacyprotection/PrivacyProtectionEventType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/privacyprotection/PrivacyProtectionEventType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->a:[Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {v0}, [Lcom/kms/privacyprotection/PrivacyProtectionEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Privacy protection event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method public newEvent()Lvg;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->newEvent(Ljava/lang/Object;)Lvg;

    move-result-object v0

    return-object v0
.end method

.method public newEvent(Ljava/lang/Object;)Lvg;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->checkData(Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lvg;

    invoke-direct {v0, p0, p1}, Lvg;-><init>(Lcom/kms/privacyprotection/PrivacyProtectionEventType;Ljava/lang/Object;)V

    return-object v0
.end method
