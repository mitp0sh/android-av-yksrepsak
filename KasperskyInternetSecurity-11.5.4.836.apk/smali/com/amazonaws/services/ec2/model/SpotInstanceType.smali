.class public final enum Lcom/amazonaws/services/ec2/model/SpotInstanceType;
.super Ljava/lang/Enum;
.source "SpotInstanceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/ec2/model/SpotInstanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/ec2/model/SpotInstanceType;

.field public static final enum OneTime:Lcom/amazonaws/services/ec2/model/SpotInstanceType;

.field public static final enum Persistent:Lcom/amazonaws/services/ec2/model/SpotInstanceType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    const-string v1, "OneTime"

    const-string v2, "one-time"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->OneTime:Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    .line 23
    new-instance v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    const-string v1, "Persistent"

    const-string v2, "persistent"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->Persistent:Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    sget-object v1, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->OneTime:Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->Persistent:Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->$VALUES:[Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->value:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceType;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    const-string v0, "one-time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->OneTime:Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_2
    const-string v0, "persistent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    sget-object v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->Persistent:Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/ec2/model/SpotInstanceType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->$VALUES:[Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/ec2/model/SpotInstanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->value:Ljava/lang/String;

    return-object v0
.end method