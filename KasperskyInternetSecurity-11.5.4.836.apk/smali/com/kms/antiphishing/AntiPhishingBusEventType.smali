.class public final enum Lcom/kms/antiphishing/AntiPhishingBusEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AntiPhishingModeChanged:Lcom/kms/antiphishing/AntiPhishingBusEventType;

.field private static final synthetic a:[Lcom/kms/antiphishing/AntiPhishingBusEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;

    const-string v1, "AntiPhishingModeChanged"

    invoke-direct {v0, v1, v2}, Lcom/kms/antiphishing/AntiPhishingBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;->AntiPhishingModeChanged:Lcom/kms/antiphishing/AntiPhishingBusEventType;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kms/antiphishing/AntiPhishingBusEventType;

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingBusEventType;->AntiPhishingModeChanged:Lcom/kms/antiphishing/AntiPhishingBusEventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;->a:[Lcom/kms/antiphishing/AntiPhishingBusEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antiphishing/AntiPhishingBusEventType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/antiphishing/AntiPhishingBusEventType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;->a:[Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-virtual {v0}, [Lcom/kms/antiphishing/AntiPhishingBusEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antiphishing/AntiPhishingBusEventType;

    return-object v0
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AntiPhishing event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    return-void
.end method

.method public final newEvent()LkJ;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->newEvent(Ljava/lang/Object;)LkJ;

    move-result-object v0

    return-object v0
.end method

.method public final newEvent(Ljava/lang/Object;)LkJ;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->checkData(Ljava/lang/Object;)V

    .line 17
    new-instance v0, LkJ;

    invoke-direct {v0, p0, p1}, LkJ;-><init>(Lcom/kms/antiphishing/AntiPhishingBusEventType;Ljava/lang/Object;)V

    return-object v0
.end method
