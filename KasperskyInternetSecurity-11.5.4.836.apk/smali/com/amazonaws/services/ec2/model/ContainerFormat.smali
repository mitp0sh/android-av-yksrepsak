.class public final enum Lcom/amazonaws/services/ec2/model/ContainerFormat;
.super Ljava/lang/Enum;
.source "ContainerFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/ec2/model/ContainerFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/ec2/model/ContainerFormat;

.field public static final enum Ova:Lcom/amazonaws/services/ec2/model/ContainerFormat;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/amazonaws/services/ec2/model/ContainerFormat;

    const-string v1, "Ova"

    const-string v2, "ova"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/ec2/model/ContainerFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/ContainerFormat;->Ova:Lcom/amazonaws/services/ec2/model/ContainerFormat;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazonaws/services/ec2/model/ContainerFormat;

    sget-object v1, Lcom/amazonaws/services/ec2/model/ContainerFormat;->Ova:Lcom/amazonaws/services/ec2/model/ContainerFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/services/ec2/model/ContainerFormat;->$VALUES:[Lcom/amazonaws/services/ec2/model/ContainerFormat;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/ContainerFormat;->value:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ContainerFormat;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    const-string v0, "ova"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-object v0, Lcom/amazonaws/services/ec2/model/ContainerFormat;->Ova:Lcom/amazonaws/services/ec2/model/ContainerFormat;

    return-object v0

    .line 49
    :cond_2
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ContainerFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/amazonaws/services/ec2/model/ContainerFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/ContainerFormat;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/ec2/model/ContainerFormat;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazonaws/services/ec2/model/ContainerFormat;->$VALUES:[Lcom/amazonaws/services/ec2/model/ContainerFormat;

    invoke-virtual {v0}, [Lcom/amazonaws/services/ec2/model/ContainerFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/ec2/model/ContainerFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ContainerFormat;->value:Ljava/lang/String;

    return-object v0
.end method
