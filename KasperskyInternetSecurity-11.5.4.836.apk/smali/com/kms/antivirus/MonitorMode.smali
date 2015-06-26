.class public final enum Lcom/kms/antivirus/MonitorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Disabled:Lcom/kms/antivirus/MonitorMode;

.field public static final enum Extended:Lcom/kms/antivirus/MonitorMode;

.field public static final enum Recommended:Lcom/kms/antivirus/MonitorMode;

.field private static final synthetic a:[Lcom/kms/antivirus/MonitorMode;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kms/antivirus/MonitorMode;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v2, v2}, Lcom/kms/antivirus/MonitorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    .line 10
    new-instance v0, Lcom/kms/antivirus/MonitorMode;

    const-string v1, "Recommended"

    invoke-direct {v0, v1, v3, v3}, Lcom/kms/antivirus/MonitorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/antivirus/MonitorMode;->Recommended:Lcom/kms/antivirus/MonitorMode;

    .line 11
    new-instance v0, Lcom/kms/antivirus/MonitorMode;

    const-string v1, "Extended"

    invoke-direct {v0, v1, v4, v4}, Lcom/kms/antivirus/MonitorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/antivirus/MonitorMode;

    sget-object v1, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antivirus/MonitorMode;->Recommended:Lcom/kms/antivirus/MonitorMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/antivirus/MonitorMode;->a:[Lcom/kms/antivirus/MonitorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/kms/antivirus/MonitorMode;->mId:I

    .line 17
    return-void
.end method

.method public static getById(I)Lcom/kms/antivirus/MonitorMode;
    .locals 5

    .prologue
    .line 25
    invoke-static {}, Lcom/kms/antivirus/MonitorMode;->values()[Lcom/kms/antivirus/MonitorMode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 26
    iget v4, v0, Lcom/kms/antivirus/MonitorMode;->mId:I

    if-ne v4, p0, :cond_0

    .line 31
    :goto_1
    return-object v0

    .line 25
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDefault()Lcom/kms/antivirus/MonitorMode;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antivirus/MonitorMode;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kms/antivirus/MonitorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/MonitorMode;

    return-object v0
.end method

.method public static values()[Lcom/kms/antivirus/MonitorMode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->a:[Lcom/kms/antivirus/MonitorMode;

    invoke-virtual {v0}, [Lcom/kms/antivirus/MonitorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antivirus/MonitorMode;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kms/antivirus/MonitorMode;->mId:I

    return v0
.end method
