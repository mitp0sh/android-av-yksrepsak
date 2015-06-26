.class public final enum Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
.super Ljava/lang/Enum;
.source "CORSRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/CORSRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AllowedMethods"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum DELETE:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum GET:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum HEAD:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum POST:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum PUT:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;


# instance fields
.field private final AllowedMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->GET:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    .line 228
    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->PUT:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    .line 229
    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->HEAD:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    .line 230
    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->POST:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    .line 231
    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->DELETE:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    .line 226
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->GET:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->PUT:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->HEAD:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->POST:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->DELETE:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->$VALUES:[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "AllowedMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->AllowedMethod:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    .locals 8
    .param p0, "allowedMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->values()[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    move-result-object v0

    .local v0, "arr$":[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 249
    .local v3, "method":Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "methodString":Ljava/lang/String;
    if-nez v4, :cond_1

    if-nez p0, :cond_1

    .line 251
    :cond_0
    return-object v3

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 248
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v3    # "method":Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    .end local v4    # "methodString":Ljava/lang/String;
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    const-class v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->$VALUES:[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->AllowedMethod:Ljava/lang/String;

    return-object v0
.end method
