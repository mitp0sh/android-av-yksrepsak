.class public final enum Lcom/amazonaws/services/autoscaling/model/LifecycleState;
.super Ljava/lang/Enum;
.source "LifecycleState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/autoscaling/model/LifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/autoscaling/model/LifecycleState;

.field public static final enum InService:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

.field public static final enum Pending:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

.field public static final enum Quarantined:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

.field public static final enum Terminated:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

.field public static final enum Terminating:Lcom/amazonaws/services/autoscaling/model/LifecycleState;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    const-string v1, "Pending"

    const-string v2, "Pending"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/autoscaling/model/LifecycleState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Pending:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .line 23
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    const-string v1, "Quarantined"

    const-string v2, "Quarantined"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/autoscaling/model/LifecycleState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Quarantined:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .line 24
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    const-string v1, "InService"

    const-string v2, "InService"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/autoscaling/model/LifecycleState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->InService:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .line 25
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    const-string v1, "Terminating"

    const-string v2, "Terminating"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/autoscaling/model/LifecycleState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Terminating:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .line 26
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    const-string v1, "Terminated"

    const-string v2, "Terminated"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/autoscaling/model/LifecycleState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Terminated:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Pending:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Quarantined:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->InService:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Terminating:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Terminated:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->$VALUES:[Lcom/amazonaws/services/autoscaling/model/LifecycleState;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->value:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LifecycleState;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    const-string v0, "Pending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Pending:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .line 59
    :goto_0
    return-object v0

    .line 52
    :cond_2
    const-string v0, "Quarantined"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Quarantined:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    goto :goto_0

    .line 54
    :cond_3
    const-string v0, "InService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->InService:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    goto :goto_0

    .line 56
    :cond_4
    const-string v0, "Terminating"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Terminating:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    goto :goto_0

    .line 58
    :cond_5
    const-string v0, "Terminated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->Terminated:Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    goto :goto_0

    .line 61
    :cond_6
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LifecycleState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/autoscaling/model/LifecycleState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->$VALUES:[Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    invoke-virtual {v0}, [Lcom/amazonaws/services/autoscaling/model/LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->value:Ljava/lang/String;

    return-object v0
.end method
