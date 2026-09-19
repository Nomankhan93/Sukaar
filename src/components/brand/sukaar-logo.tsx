import Image from "next/image";
import Link from "next/link";

function cn(...parts: Array<string | false | null | undefined>) {
  return parts.filter(Boolean).join(" ");
}

type SukaarLogoProps = {
  href?: string;
  variant?: "horizontal" | "emblem";
  size?: "sm" | "md" | "lg";
  className?: string;
  imageClassName?: string;
  priority?: boolean;
  label?: string;
};

const emblemSizes = {
  sm: 42,
  md: 56,
  lg: 76,
} as const;

const wordmarkSizes = {
  sm: {
    title: "text-[13px]",
    subtitle: "text-[8px]",
    gap: "gap-2",
  },
  md: {
    title: "text-[15px]",
    subtitle: "text-[9px]",
    gap: "gap-2.5",
  },
  lg: {
    title: "text-[18px]",
    subtitle: "text-[10px]",
    gap: "gap-3",
  },
} as const;

function Emblem({
  size = "md",
  imageClassName,
  priority = false,
}: Pick<SukaarLogoProps, "size" | "imageClassName" | "priority">) {
  const dimension = emblemSizes[size];

  return (
    <Image
      src="/brand/sukaar-emblem.png"
      alt="Sukaar Welfare Organization emblem"
      width={dimension}
      height={dimension}
      priority={priority}
      className={cn("h-auto shrink-0 object-contain", imageClassName)}
    />
  );
}

export function SukaarLogo({
  href = "/",
  variant = "horizontal",
  size = "md",
  className,
  imageClassName,
  priority = false,
  label,
}: SukaarLogoProps) {
  const wordmark = wordmarkSizes[size];

  const content = (
    <span
      className={cn(
        "inline-flex items-center",
        variant === "horizontal" && wordmark.gap,
        className,
      )}
    >
      <Emblem
        size={size}
        imageClassName={imageClassName}
        priority={priority}
      />

      {variant === "horizontal" ? (
        <span className="min-w-0 leading-none">
          <span
            className={cn(
              "block whitespace-nowrap font-black tracking-[-0.035em] text-poem-950",
              wordmark.title,
            )}
          >
            Sukaar Welfare Organization
          </span>
          <span
            className={cn(
              "mt-1 block font-extrabold uppercase tracking-[0.16em] text-poem-700",
              wordmark.subtitle,
            )}
          >
            Sindh · Pakistan
          </span>
        </span>
      ) : null}

      {label ? <span className="sr-only">{label}</span> : null}
    </span>
  );

  if (!href) return content;

  return (
    <Link
      href={href}
      aria-label={label ?? "Sukaar Welfare Organization home"}
      className="inline-flex items-center"
    >
      {content}
    </Link>
  );
}
