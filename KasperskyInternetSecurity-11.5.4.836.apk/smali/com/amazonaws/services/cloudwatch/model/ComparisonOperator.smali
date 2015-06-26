.class public final enum Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;
.super Ljava/lang/Enum;
.source "ComparisonOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

.field public static final enum GreaterThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

.field public static final enum GreaterThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

.field public static final enum LessThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

.field public static final enum LessThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    const-string v1, "GreaterThanOrEqualToThreshold"

    const-string v2, "GreaterThanOrEqualToThreshold"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->GreaterThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .line 23
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    const-string v1, "GreaterThanThreshold"

    const-string v2, "GreaterThanThreshold"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->GreaterThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .line 24
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    const-string v1, "LessThanThreshold"

    const-string v2, "LessThanThreshold"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->LessThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .line 25
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    const-string v1, "LessThanOrEqualToThreshold"

    const-string v2, "LessThanOrEqualToThreshold"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->LessThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->GreaterThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->GreaterThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->LessThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->LessThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    const-string v0, "GreaterThanOrEqualToThreshold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->GreaterThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_2
    const-string v0, "GreaterThanThreshold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->GreaterThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "LessThanThreshold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->LessThanThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "LessThanOrEqualToThreshold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->LessThanOrEqualToThreshold:Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    goto :goto_0

    .line 58
    :cond_5
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->$VALUES:[Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    invoke-virtual {v0}, [Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->value:Ljava/lang/String;

    return-object v0
.end method
