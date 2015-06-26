.class public final enum Lcom/kms/antivirus/AntivirusUpdateBasesStateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Running:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

.field public static final enum Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

.field private static final synthetic a:[Lcom/kms/antivirus/AntivirusUpdateBasesStateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    const-string v1, "Running"

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Running:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    .line 5
    new-instance v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v3}, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Running:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->a:[Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antivirus/AntivirusUpdateBasesStateType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    return-object v0
.end method

.method public static values()[Lcom/kms/antivirus/AntivirusUpdateBasesStateType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->a:[Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    invoke-virtual {v0}, [Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    return-object v0
.end method
