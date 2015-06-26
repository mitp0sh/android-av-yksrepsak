.class public enum Lcom/kms/licensing/LicenseEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum InformationExpired:Lcom/kms/licensing/LicenseEventType;

.field public static final enum InformationValid:Lcom/kms/licensing/LicenseEventType;

.field public static final enum LicenseExpiring:Lcom/kms/licensing/LicenseEventType;

.field public static final enum StateChanged:Lcom/kms/licensing/LicenseEventType;

.field private static final synthetic a:[Lcom/kms/licensing/LicenseEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/kms/licensing/LicenseEventType$1;

    const-string v1, "StateChanged"

    invoke-direct {v0, v1, v2}, Lcom/kms/licensing/LicenseEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/LicenseEventType;->StateChanged:Lcom/kms/licensing/LicenseEventType;

    .line 23
    new-instance v0, Lcom/kms/licensing/LicenseEventType;

    const-string v1, "InformationExpired"

    invoke-direct {v0, v1, v3}, Lcom/kms/licensing/LicenseEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/LicenseEventType;->InformationExpired:Lcom/kms/licensing/LicenseEventType;

    .line 28
    new-instance v0, Lcom/kms/licensing/LicenseEventType;

    const-string v1, "InformationValid"

    invoke-direct {v0, v1, v4}, Lcom/kms/licensing/LicenseEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/LicenseEventType;->InformationValid:Lcom/kms/licensing/LicenseEventType;

    .line 33
    new-instance v0, Lcom/kms/licensing/LicenseEventType;

    const-string v1, "LicenseExpiring"

    invoke-direct {v0, v1, v5}, Lcom/kms/licensing/LicenseEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/LicenseEventType;->LicenseExpiring:Lcom/kms/licensing/LicenseEventType;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kms/licensing/LicenseEventType;

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->StateChanged:Lcom/kms/licensing/LicenseEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->InformationExpired:Lcom/kms/licensing/LicenseEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->InformationValid:Lcom/kms/licensing/LicenseEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->LicenseExpiring:Lcom/kms/licensing/LicenseEventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kms/licensing/LicenseEventType;->a:[Lcom/kms/licensing/LicenseEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/licensing/LicenseEventType$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kms/licensing/LicenseEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/licensing/LicenseEventType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/kms/licensing/LicenseEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/licensing/LicenseEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/licensing/LicenseEventType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kms/licensing/LicenseEventType;->a:[Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v0}, [Lcom/kms/licensing/LicenseEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/licensing/LicenseEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "License event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/licensing/LicenseEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method

.method public newEvent()LsZ;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/licensing/LicenseEventType;->newEvent(Ljava/lang/Object;)LsZ;

    move-result-object v0

    return-object v0
.end method

.method public newEvent(Ljava/lang/Object;)LsZ;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/kms/licensing/LicenseEventType;->checkData(Ljava/lang/Object;)V

    .line 42
    new-instance v0, LsZ;

    invoke-direct {v0, p0, p1}, LsZ;-><init>(Lcom/kms/licensing/LicenseEventType;Ljava/lang/Object;)V

    return-object v0
.end method
