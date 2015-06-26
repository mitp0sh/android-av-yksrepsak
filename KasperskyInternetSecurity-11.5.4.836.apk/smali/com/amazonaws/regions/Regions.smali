.class public final enum Lcom/amazonaws/regions/Regions;
.super Ljava/lang/Enum;
.source "Regions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/regions/Regions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

.field public static final DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum GovCloud:Lcom/amazonaws/regions/Regions;

.field public static final enum SA_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_2:Lcom/amazonaws/regions/Regions;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "GovCloud"

    const-string v2, "us-gov-west-1"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->GovCloud:Lcom/amazonaws/regions/Regions;

    .line 23
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "US_EAST_1"

    const-string v2, "us-east-1"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 24
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "US_WEST_1"

    const-string v2, "us-west-1"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazonaws/regions/Regions;

    .line 25
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "US_WEST_2"

    const-string v2, "us-west-2"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    .line 26
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "EU_WEST_1"

    const-string v2, "eu-west-1"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazonaws/regions/Regions;

    .line 27
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_SOUTHEAST_1"

    const/4 v2, 0x5

    const-string v3, "ap-southeast-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

    .line 28
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_SOUTHEAST_2"

    const/4 v2, 0x6

    const-string v3, "ap-southeast-2"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

    .line 29
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_NORTHEAST_1"

    const/4 v2, 0x7

    const-string v3, "ap-northeast-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

    .line 30
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "SA_EAST_1"

    const/16 v2, 0x8

    const-string v3, "sa-east-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazonaws/regions/Regions;

    sget-object v1, Lcom/amazonaws/regions/Regions;->GovCloud:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazonaws/regions/Regions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    .line 36
    sget-object v0, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    sput-object v0, Lcom/amazonaws/regions/Regions;->DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/amazonaws/regions/Regions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/regions/Regions;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/regions/Regions;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    invoke-virtual {v0}, [Lcom/amazonaws/regions/Regions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/regions/Regions;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    return-object v0
.end method
