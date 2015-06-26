.class public final enum Lcom/kms/antivirus/AntivirusStateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Finished:Lcom/kms/antivirus/AntivirusStateType;

.field public static final enum Paused:Lcom/kms/antivirus/AntivirusStateType;

.field public static final enum Running:Lcom/kms/antivirus/AntivirusStateType;

.field private static final synthetic a:[Lcom/kms/antivirus/AntivirusStateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/kms/antivirus/AntivirusStateType;

    const-string v1, "Running"

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusStateType;->Running:Lcom/kms/antivirus/AntivirusStateType;

    .line 5
    new-instance v0, Lcom/kms/antivirus/AntivirusStateType;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v3}, Lcom/kms/antivirus/AntivirusStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusStateType;->Paused:Lcom/kms/antivirus/AntivirusStateType;

    .line 6
    new-instance v0, Lcom/kms/antivirus/AntivirusStateType;

    const-string v1, "Finished"

    invoke-direct {v0, v1, v4}, Lcom/kms/antivirus/AntivirusStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/antivirus/AntivirusStateType;

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Running:Lcom/kms/antivirus/AntivirusStateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Paused:Lcom/kms/antivirus/AntivirusStateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/antivirus/AntivirusStateType;->a:[Lcom/kms/antivirus/AntivirusStateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antivirus/AntivirusStateType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/antivirus/AntivirusStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusStateType;

    return-object v0
.end method

.method public static values()[Lcom/kms/antivirus/AntivirusStateType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/antivirus/AntivirusStateType;->a:[Lcom/kms/antivirus/AntivirusStateType;

    invoke-virtual {v0}, [Lcom/kms/antivirus/AntivirusStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antivirus/AntivirusStateType;

    return-object v0
.end method
