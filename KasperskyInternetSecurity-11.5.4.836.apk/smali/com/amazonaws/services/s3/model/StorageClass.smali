.class public final enum Lcom/amazonaws/services/s3/model/StorageClass;
.super Ljava/lang/Enum;
.source "StorageClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/StorageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum Standard:Lcom/amazonaws/services/s3/model/StorageClass;


# instance fields
.field private final storageClassId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "Standard"

    const-string v2, "STANDARD"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->Standard:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 50
    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "ReducedRedundancy"

    const-string v2, "REDUCED_REDUNDANCY"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 57
    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "Glacier"

    const-string v2, "GLACIER"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/StorageClass;

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->Standard:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 7
    .param p0, "s3StorageClassString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/amazonaws/services/s3/model/StorageClass;->values()[Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    .local v0, "arr$":[Lcom/amazonaws/services/s3/model/StorageClass;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 77
    .local v3, "storageClass":Lcom/amazonaws/services/s3/model/StorageClass;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "storageClass":Lcom/amazonaws/services/s3/model/StorageClass;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create enum from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/StorageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    return-object v0
.end method
