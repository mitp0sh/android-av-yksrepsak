.class public final enum Lcom/kms/kmsshared/DefaultActionHandler$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum TYPE_AT:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

.field public static final enum TYPE_AV:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

.field private static final synthetic a:[Lcom/kms/kmsshared/DefaultActionHandler$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    const-string v1, "TYPE_AV"

    invoke-direct {v0, v1, v2}, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->TYPE_AV:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    new-instance v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    const-string v1, "TYPE_AT"

    invoke-direct {v0, v1, v3}, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->TYPE_AT:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    sget-object v1, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->TYPE_AV:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->TYPE_AT:Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->a:[Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/kmsshared/DefaultActionHandler$ActionType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/kms/kmsshared/DefaultActionHandler$ActionType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->a:[Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    invoke-virtual {v0}, [Lcom/kms/kmsshared/DefaultActionHandler$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/kmsshared/DefaultActionHandler$ActionType;

    return-object v0
.end method
