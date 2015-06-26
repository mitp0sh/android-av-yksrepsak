.class public enum Lcom/kms/gui/dialog/DialogEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NegativeButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

.field public static final enum NeutralButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

.field public static final enum PositiveButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

.field private static final synthetic a:[Lcom/kms/gui/dialog/DialogEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kms/gui/dialog/DialogEventType$1;

    const-string v1, "PositiveButtonClicked"

    invoke-direct {v0, v1, v2}, Lcom/kms/gui/dialog/DialogEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/dialog/DialogEventType;->PositiveButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

    .line 18
    new-instance v0, Lcom/kms/gui/dialog/DialogEventType$2;

    const-string v1, "NegativeButtonClicked"

    invoke-direct {v0, v1, v3}, Lcom/kms/gui/dialog/DialogEventType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/dialog/DialogEventType;->NegativeButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

    .line 27
    new-instance v0, Lcom/kms/gui/dialog/DialogEventType$3;

    const-string v1, "NeutralButtonClicked"

    invoke-direct {v0, v1, v4}, Lcom/kms/gui/dialog/DialogEventType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/dialog/DialogEventType;->NeutralButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/gui/dialog/DialogEventType;

    sget-object v1, Lcom/kms/gui/dialog/DialogEventType;->PositiveButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/gui/dialog/DialogEventType;->NegativeButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/gui/dialog/DialogEventType;->NeutralButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/gui/dialog/DialogEventType;->a:[Lcom/kms/gui/dialog/DialogEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/gui/dialog/DialogEventType$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/kms/gui/dialog/DialogEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/gui/dialog/DialogEventType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kms/gui/dialog/DialogEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/dialog/DialogEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/gui/dialog/DialogEventType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kms/gui/dialog/DialogEventType;->a:[Lcom/kms/gui/dialog/DialogEventType;

    invoke-virtual {v0}, [Lcom/kms/gui/dialog/DialogEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/gui/dialog/DialogEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dialog event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/gui/dialog/DialogEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method public newEvent(Ljava/lang/String;)LoJ;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kms/gui/dialog/DialogEventType;->newEvent(Ljava/lang/String;Ljava/lang/Object;)LoJ;

    move-result-object v0

    return-object v0
.end method

.method public newEvent(Ljava/lang/String;Ljava/lang/Object;)LoJ;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p2}, Lcom/kms/gui/dialog/DialogEventType;->checkData(Ljava/lang/Object;)V

    .line 44
    new-instance v0, LoJ;

    invoke-direct {v0, p1, p0, p2}, LoJ;-><init>(Ljava/lang/String;Lcom/kms/gui/dialog/DialogEventType;Ljava/lang/Object;)V

    return-object v0
.end method
