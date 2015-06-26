.class public final enum Lcom/kms/licensing/iapurchase/Consts$PurchaseState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CANCELED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

.field public static final enum PURCHASED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

.field public static final enum REFUNDED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

.field private static final synthetic a:[Lcom/kms/licensing/iapurchase/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->PURCHASED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    .line 48
    new-instance v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->CANCELED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    .line 49
    new-instance v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->REFUNDED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    sget-object v1, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->PURCHASED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->CANCELED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->REFUNDED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->a:[Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/kms/licensing/iapurchase/Consts$PurchaseState;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->values()[Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    move-result-object v0

    .line 54
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->CANCELED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    .line 57
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/licensing/iapurchase/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lcom/kms/licensing/iapurchase/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->a:[Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    invoke-virtual {v0}, [Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    return-object v0
.end method
