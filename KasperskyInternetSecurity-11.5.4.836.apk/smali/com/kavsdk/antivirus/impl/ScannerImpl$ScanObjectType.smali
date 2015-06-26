.class public final enum Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum File:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

.field public static final enum Folder:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

.field public static final enum Stream:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

.field private static final synthetic a:[Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    const-string v1, "File"

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->File:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    .line 67
    new-instance v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    const-string v1, "Folder"

    invoke-direct {v0, v1, v3}, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Folder:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    .line 68
    new-instance v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    const-string v1, "Stream"

    invoke-direct {v0, v1, v4}, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Stream:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    sget-object v1, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->File:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Folder:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Stream:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->a:[Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    return-object v0
.end method

.method public static values()[Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->a:[Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    invoke-virtual {v0}, [Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    return-object v0
.end method
