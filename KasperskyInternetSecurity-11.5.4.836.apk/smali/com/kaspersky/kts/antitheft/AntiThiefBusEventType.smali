.class public enum Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AccountExpired:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum AccountNotValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum AccountValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum AntiThiefEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum AntiThiefStatusRefresh:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum AtCommandStatusesChanged:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum CommandDisabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum CommandEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field public static final enum InvalidRegistrationData:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

.field private static final synthetic a:[Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    const-string v1, "AntiThiefStatusRefresh"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefStatusRefresh:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 13
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    const-string v1, "AntiThiefEnabled"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 18
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    const-string v1, "AccountValidated"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 23
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    const-string v1, "AccountExpired"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountExpired:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 29
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    const-string v1, "AccountNotValidated"

    invoke-direct {v0, v1, v7}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountNotValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 31
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType$1;

    const-string v1, "CommandEnabled"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 41
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    const-string v1, "AtCommandStatusesChanged"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AtCommandStatusesChanged:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 43
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType$2;

    const-string v1, "CommandDisabled"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandDisabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 55
    new-instance v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    const-string v1, "InvalidRegistrationData"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->InvalidRegistrationData:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    .line 4
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefStatusRefresh:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountExpired:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountNotValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AtCommandStatusesChanged:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandDisabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->InvalidRegistrationData:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->a:[Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kaspersky/kts/antitheft/AntiThiefBusEventType$1;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->a:[Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AntiThief event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method public newEvent()LcT;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent(Ljava/lang/Object;)LcT;

    move-result-object v0

    return-object v0
.end method

.method public newEvent(Ljava/lang/Object;)LcT;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->checkData(Ljava/lang/Object;)V

    .line 67
    new-instance v0, LcT;

    invoke-direct {v0, p0, p1}, LcT;-><init>(Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;Ljava/lang/Object;)V

    return-object v0
.end method
