.class public final enum Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ChangeMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field public static final enum EnterMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field public static final enum EnterRecoveryMode:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field public static final enum RepeatMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field public static final enum RepeatNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field public static final enum SetMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field public static final enum SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field public static final enum ShowMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field private static final synthetic a:[Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "ShowMasterKey"

    invoke-direct {v0, v1, v3}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ShowMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "EnterMasterKey"

    invoke-direct {v0, v1, v4}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "EnterRecoveryMode"

    invoke-direct {v0, v1, v5}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterRecoveryMode:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "ChangeMasterKey"

    invoke-direct {v0, v1, v6}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ChangeMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "SetNewMasterKey"

    invoke-direct {v0, v1, v7}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "RepeatNewMasterKey"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "SetMasterKey"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const-string v1, "RepeatMasterKey"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 328
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ShowMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterRecoveryMode:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ChangeMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->a:[Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;
    .locals 1

    .prologue
    .line 328
    const-class v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    return-object v0
.end method

.method public static values()[Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->a:[Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-virtual {v0}, [Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    return-object v0
.end method
