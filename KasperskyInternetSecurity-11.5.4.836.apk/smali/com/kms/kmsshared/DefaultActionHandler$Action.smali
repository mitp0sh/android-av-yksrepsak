.class public final enum Lcom/kms/kmsshared/DefaultActionHandler$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ACTION_AT_GET_SERVER_COMMANDS:Lcom/kms/kmsshared/DefaultActionHandler$Action;

.field public static final enum ACTION_AV_CHANGE_PROTECTION_LEVEL:Lcom/kms/kmsshared/DefaultActionHandler$Action;

.field public static final enum ACTION_AV_UPDATE_BASES:Lcom/kms/kmsshared/DefaultActionHandler$Action;

.field private static final synthetic a:[Lcom/kms/kmsshared/DefaultActionHandler$Action;


# instance fields
.field private mActionType:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;

    const-string v1, "ACTION_AV_UPDATE_BASES"

    sget-object v2, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->TYPE_AV:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    invoke-direct {v0, v1, v3, v2}, Lcom/kms/kmsshared/DefaultActionHandler$Action;-><init>(Ljava/lang/String;ILcom/kms/kmsshared/DefaultActionHandler$ActionType;)V

    sput-object v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AV_UPDATE_BASES:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    .line 39
    new-instance v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;

    const-string v1, "ACTION_AV_CHANGE_PROTECTION_LEVEL"

    sget-object v2, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->TYPE_AV:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    invoke-direct {v0, v1, v4, v2}, Lcom/kms/kmsshared/DefaultActionHandler$Action;-><init>(Ljava/lang/String;ILcom/kms/kmsshared/DefaultActionHandler$ActionType;)V

    sput-object v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AV_CHANGE_PROTECTION_LEVEL:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    .line 41
    new-instance v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;

    const-string v1, "ACTION_AT_GET_SERVER_COMMANDS"

    sget-object v2, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->TYPE_AT:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    invoke-direct {v0, v1, v5, v2}, Lcom/kms/kmsshared/DefaultActionHandler$Action;-><init>(Ljava/lang/String;ILcom/kms/kmsshared/DefaultActionHandler$ActionType;)V

    sput-object v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AT_GET_SERVER_COMMANDS:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/kmsshared/DefaultActionHandler$Action;

    sget-object v1, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AV_UPDATE_BASES:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AV_CHANGE_PROTECTION_LEVEL:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AT_GET_SERVER_COMMANDS:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;->a:[Lcom/kms/kmsshared/DefaultActionHandler$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/kms/kmsshared/DefaultActionHandler$ActionType;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/kms/kmsshared/DefaultActionHandler$Action;->mActionType:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/kmsshared/DefaultActionHandler$Action;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;

    return-object v0
.end method

.method public static values()[Lcom/kms/kmsshared/DefaultActionHandler$Action;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kms/kmsshared/DefaultActionHandler$Action;->a:[Lcom/kms/kmsshared/DefaultActionHandler$Action;

    invoke-virtual {v0}, [Lcom/kms/kmsshared/DefaultActionHandler$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/kmsshared/DefaultActionHandler$Action;

    return-object v0
.end method


# virtual methods
.method public final getType()Lcom/kms/kmsshared/DefaultActionHandler$ActionType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kms/kmsshared/DefaultActionHandler$Action;->mActionType:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    return-object v0
.end method
