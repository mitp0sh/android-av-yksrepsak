.class public final enum Lcom/amazonaws/services/cloudwatch/model/StateValue;
.super Ljava/lang/Enum;
.source "StateValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/cloudwatch/model/StateValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cloudwatch/model/StateValue;

.field public static final enum ALARM:Lcom/amazonaws/services/cloudwatch/model/StateValue;

.field public static final enum INSUFFICIENT_DATA:Lcom/amazonaws/services/cloudwatch/model/StateValue;

.field public static final enum OK:Lcom/amazonaws/services/cloudwatch/model/StateValue;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;

    const-string v1, "OK"

    const-string v2, "OK"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/cloudwatch/model/StateValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->OK:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .line 23
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;

    const-string v1, "ALARM"

    const-string v2, "ALARM"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cloudwatch/model/StateValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->ALARM:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .line 24
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;

    const-string v1, "INSUFFICIENT_DATA"

    const-string v2, "INSUFFICIENT_DATA"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cloudwatch/model/StateValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->INSUFFICIENT_DATA:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazonaws/services/cloudwatch/model/StateValue;

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StateValue;->OK:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StateValue;->ALARM:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/StateValue;->INSUFFICIENT_DATA:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/StateValue;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->value:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/StateValue;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    const-string v0, "OK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->OK:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_2
    const-string v0, "ALARM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->ALARM:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "INSUFFICIENT_DATA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->INSUFFICIENT_DATA:Lcom/amazonaws/services/cloudwatch/model/StateValue;

    goto :goto_0

    .line 55
    :cond_4
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/StateValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/cloudwatch/model/StateValue;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/StateValue;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cloudwatch/model/StateValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cloudwatch/model/StateValue;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StateValue;->value:Ljava/lang/String;

    return-object v0
.end method
