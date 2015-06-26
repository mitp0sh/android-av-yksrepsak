.class public final enum Lcom/amazonaws/services/s3/model/Region;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_Standard:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West_2:Lcom/amazonaws/services/s3/model/Region;


# instance fields
.field private final regionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_Standard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    .line 62
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_West"

    const-string v2, "us-west-1"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    .line 74
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_West_2"

    const-string v2, "us-west-2"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    .line 85
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_Ireland"

    const-string v2, "EU"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    .line 97
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Singapore"

    const-string v2, "ap-southeast-1"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    .line 109
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Sydney"

    const/4 v2, 0x5

    const-string v3, "ap-southeast-2"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

    .line 121
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Tokyo"

    const/4 v2, 0x6

    const-string v3, "ap-northeast-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    .line 133
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "SA_SaoPaulo"

    const/4 v2, 0x7

    const-string v3, "sa-east-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/Region;

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/s3/model/Region;->AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "regionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/Region;->regionId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .locals 8
    .param p0, "s3RegionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/amazonaws/services/s3/model/Region;->values()[Lcom/amazonaws/services/s3/model/Region;

    move-result-object v0

    .local v0, "arr$":[Lcom/amazonaws/services/s3/model/Region;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 174
    .local v3, "region":Lcom/amazonaws/services/s3/model/Region;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "regionString":Ljava/lang/String;
    if-nez v4, :cond_1

    if-nez p0, :cond_1

    .line 176
    :cond_0
    return-object v3

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "region":Lcom/amazonaws/services/s3/model/Region;
    .end local v4    # "regionString":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create enum from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/amazonaws/services/s3/model/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/Region;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/Region;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/Region;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionId:Ljava/lang/String;

    return-object v0
.end method
