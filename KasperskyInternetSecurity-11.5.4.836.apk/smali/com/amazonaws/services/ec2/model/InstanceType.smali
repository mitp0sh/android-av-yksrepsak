.class public final enum Lcom/amazonaws/services/ec2/model/InstanceType;
.super Ljava/lang/Enum;
.source "InstanceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/ec2/model/InstanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum C1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum C1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum Cc14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum Cc28xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum Cg14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum Hi14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum Hs18xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M1Large:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M1Small:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M22xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M24xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M2Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M32xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum M3Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

.field public static final enum T1Micro:Lcom/amazonaws/services/ec2/model/InstanceType;


# instance fields
.field private value:Ljava/lang/String;


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
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "T1Micro"

    const-string v2, "t1.micro"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->T1Micro:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 23
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M1Small"

    const-string v2, "m1.small"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Small:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 24
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M1Medium"

    const-string v2, "m1.medium"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 25
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M1Large"

    const-string v2, "m1.large"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Large:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 26
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M1Xlarge"

    const-string v2, "m1.xlarge"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 27
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M2Xlarge"

    const/4 v2, 0x5

    const-string v3, "m2.xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M2Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 28
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M22xlarge"

    const/4 v2, 0x6

    const-string v3, "m2.2xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M22xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 29
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M24xlarge"

    const/4 v2, 0x7

    const-string v3, "m2.4xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M24xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 30
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M3Xlarge"

    const/16 v2, 0x8

    const-string v3, "m3.xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M3Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 31
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "M32xlarge"

    const/16 v2, 0x9

    const-string v3, "m3.2xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M32xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 32
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "C1Medium"

    const/16 v2, 0xa

    const-string v3, "c1.medium"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->C1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 33
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "C1Xlarge"

    const/16 v2, 0xb

    const-string v3, "c1.xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->C1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 34
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "Hi14xlarge"

    const/16 v2, 0xc

    const-string v3, "hi1.4xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Hi14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 35
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "Hs18xlarge"

    const/16 v2, 0xd

    const-string v3, "hs1.8xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Hs18xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 36
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "Cc14xlarge"

    const/16 v2, 0xe

    const-string v3, "cc1.4xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Cc14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 37
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "Cc28xlarge"

    const/16 v2, 0xf

    const-string v3, "cc2.8xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Cc28xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 38
    new-instance v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    const-string v1, "Cg14xlarge"

    const/16 v2, 0x10

    const-string v3, "cg1.4xlarge"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/ec2/model/InstanceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Cg14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 20
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/amazonaws/services/ec2/model/InstanceType;

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceType;->T1Micro:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Small:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Large:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->M2Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->M22xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->M24xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->M3Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->M32xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->C1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->C1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->Hi14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->Hs18xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->Cc14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->Cc28xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/amazonaws/services/ec2/model/InstanceType;->Cg14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->$VALUES:[Lcom/amazonaws/services/ec2/model/InstanceType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/InstanceType;->value:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceType;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    const-string v0, "t1.micro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->T1Micro:Lcom/amazonaws/services/ec2/model/InstanceType;

    .line 95
    :goto_0
    return-object v0

    .line 64
    :cond_2
    const-string v0, "m1.small"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Small:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "m1.medium"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "m1.large"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Large:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 70
    :cond_5
    const-string v0, "m1.xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 72
    :cond_6
    const-string v0, "m2.xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M2Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 74
    :cond_7
    const-string v0, "m2.2xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M22xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 76
    :cond_8
    const-string v0, "m2.4xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M24xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 78
    :cond_9
    const-string v0, "m3.xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 79
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M3Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 80
    :cond_a
    const-string v0, "m3.2xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->M32xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 82
    :cond_b
    const-string v0, "c1.medium"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 83
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->C1Medium:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 84
    :cond_c
    const-string v0, "c1.xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->C1Xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto :goto_0

    .line 86
    :cond_d
    const-string v0, "hi1.4xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 87
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Hi14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto/16 :goto_0

    .line 88
    :cond_e
    const-string v0, "hs1.8xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 89
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Hs18xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto/16 :goto_0

    .line 90
    :cond_f
    const-string v0, "cc1.4xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Cc14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto/16 :goto_0

    .line 92
    :cond_10
    const-string v0, "cc2.8xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 93
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Cc28xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto/16 :goto_0

    .line 94
    :cond_11
    const-string v0, "cg1.4xlarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 95
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->Cg14xlarge:Lcom/amazonaws/services/ec2/model/InstanceType;

    goto/16 :goto_0

    .line 97
    :cond_12
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceType;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/ec2/model/InstanceType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazonaws/services/ec2/model/InstanceType;->$VALUES:[Lcom/amazonaws/services/ec2/model/InstanceType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/ec2/model/InstanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/ec2/model/InstanceType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceType;->value:Ljava/lang/String;

    return-object v0
.end method
