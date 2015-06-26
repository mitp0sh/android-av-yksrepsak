.class public abstract enum Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Bottom:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

.field public static final enum Left:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

.field public static final enum Right:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

.field public static final enum Top:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

.field private static final synthetic a:[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$1;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2, v2}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Left:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    .line 57
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$2;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3, v3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Top:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    .line 105
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$3;

    const-string v1, "Right"

    invoke-direct {v0, v1, v4, v4}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Right:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    .line 153
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$4;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v5, v5}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Bottom:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Left:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Top:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Right:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Bottom:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->a:[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput p3, p0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->mId:I

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getById(I)Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;
    .locals 5

    .prologue
    .line 209
    invoke-static {}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->values()[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 210
    iget v4, v3, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->mId:I

    if-ne v4, p0, :cond_0

    .line 211
    return-object v3

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sliding view position with id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->a:[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    invoke-virtual {v0}, [Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    return-object v0
.end method


# virtual methods
.method public abstract getOpenedSlidingViewOffset(Landroid/view/View;)I
.end method

.method public abstract layoutMainViewPushed(Landroid/view/View;III)V
.end method

.method public abstract layoutMainViewShrunk(Landroid/view/View;III)V
.end method

.method public abstract layoutSlidingView(Landroid/view/View;III)V
.end method

.method public abstract toScreenOffset(Landroid/view/View;I)I
.end method

.method public abstract toSliderDelta(I)I
.end method

.method public abstract transformMainViewCanvasPushed(Landroid/graphics/Canvas;I)V
.end method

.method public abstract transformMainViewCanvasShrunk(Landroid/graphics/Canvas;ILca;)V
.end method

.method public abstract transformSlidingViewCanvas(Landroid/graphics/Canvas;ILandroid/view/View;)V
.end method
