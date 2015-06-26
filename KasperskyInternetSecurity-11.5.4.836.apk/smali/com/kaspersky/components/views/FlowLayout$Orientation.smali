.class public abstract enum Lcom/kaspersky/components/views/FlowLayout$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Horizontal:Lcom/kaspersky/components/views/FlowLayout$Orientation;

.field public static final enum Vertical:Lcom/kaspersky/components/views/FlowLayout$Orientation;

.field private static final synthetic a:[Lcom/kaspersky/components/views/FlowLayout$Orientation;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    new-instance v0, Lcom/kaspersky/components/views/FlowLayout$Orientation$1;

    const-string v1, "Horizontal"

    invoke-direct {v0, v1, v2, v2}, Lcom/kaspersky/components/views/FlowLayout$Orientation$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Horizontal:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    .line 481
    new-instance v0, Lcom/kaspersky/components/views/FlowLayout$Orientation$2;

    const-string v1, "Vertical"

    invoke-direct {v0, v1, v3, v3}, Lcom/kaspersky/components/views/FlowLayout$Orientation$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Vertical:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    .line 473
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaspersky/components/views/FlowLayout$Orientation;

    sget-object v1, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Horizontal:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Vertical:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->a:[Lcom/kaspersky/components/views/FlowLayout$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 491
    iput p3, p0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->mId:I

    .line 492
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILbF;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1, p2, p3}, Lcom/kaspersky/components/views/FlowLayout$Orientation;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private static a(I)Lcom/kaspersky/components/views/FlowLayout$Orientation;
    .locals 5

    .prologue
    .line 496
    invoke-static {}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->values()[Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 497
    iget v4, v3, Lcom/kaspersky/components/views/FlowLayout$Orientation;->mId:I

    if-ne v4, p0, :cond_0

    .line 498
    return-object v3

    .line 496
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Orientation doesn\'t support "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/kaspersky/components/views/FlowLayout$Orientation;)I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->mId:I

    return v0
.end method

.method static synthetic access$100(I)Lcom/kaspersky/components/views/FlowLayout$Orientation;
    .locals 1

    .prologue
    .line 473
    invoke-static {p0}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->a(I)Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/views/FlowLayout$Orientation;
    .locals 1

    .prologue
    .line 473
    const-class v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/views/FlowLayout$Orientation;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->a:[Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-virtual {v0}, [Lcom/kaspersky/components/views/FlowLayout$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/views/FlowLayout$Orientation;

    return-object v0
.end method


# virtual methods
.method public abstract getSize(II)I
.end method
